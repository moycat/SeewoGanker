<?php
	/*
	 * DB Class @ MoyOJ
	 *
	 * Author: Moycat
	 * Last Update: 2015-12-31
	 * 
	 * This file is part of MoyOJ written by Moycat and used for simple database operations.
	 * It's a open-source class under GNU General Public License, version 2.
	 * 
	 */

	class DB
	{
		private $host = 'localhost';
		private $name = 'database';
		private $user = 'username';
		private $pass = 'password';
		
		private $mysqli;
		private $query;
		private $insID;
		
		private $count = 0;
		
		function __construct( $db_host, $db_user, $db_pass, $db_name )
		{
			$this->host = $db_host;
			$this->name = $db_name;
			$this->user = $db_user;
			$this->pass = $db_pass;
		}
		
		function connect()
		{
			$this->mysqli = new mysqli( 'p:'. $this->host, $this->user,
								$this->pass, $this->name );
			if ( mysqli_connect_errno() )
			{
				die( '<h1>Error Connecting to the Database</h1>' );
			}
			$this->mysqli->set_charset( 'utf8' );
		}
		
		function prepare( $sql )
		{
			$this->query = $this->mysqli->prepare( $sql );
		}
		
		function bind()
		{
			$input = func_get_args();
			$cnt = count( $input );
			if ( $cnt < 2 )
			{
				throw new Exception('Wrong Binding!');
				return;
			}
			for( $i = 1; $i < $cnt; ++$i )
			{
				$input[$i] = &$input[$i];
			}
			call_user_func_array( array( $this->query, 'bind_param' ), $input );
		}
		
		function execute()
		{
			$this->query->execute();
			$this->count ++;
			$this->insID = $this->query->insert_id;
			if ( !$this->query->field_count )
			{
				$this->query->close();
				return True;
			}
			$result = array();
			$meta = $this->query->result_metadata();   
			while ( $field = $meta->fetch_field() )
			{
				$params[] = &$row[$field->name];
			}
			$this->query->store_result();
			call_user_func_array( array( $this->query, 'bind_result' ), $params );
			while ( $this->query->fetch() )
			{
				foreach( $row as $key => $val )
				{
					$c[$key] = $val;
				}
				$result[] = $c;
			}
			$this->query->free_result();
			$this->query->close();
			return $result;
		}
		
		public function getCount()
		{
			return $this->count;
		}
		public function getInsID()
		{
			return $this->insID;
		}
	}