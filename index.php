<?php
include "db.php";
$DB = new DB();	//call DB class from db.php
?>
<!DOCTYPE html>
<html>
<head>
	<title>Site title here</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<div class="container">
	<div class="row">
		<?php
			$per_page = 2;
			// Get page id from pagination and get limited post
			if (isset($_GET["page"])) {
				$page = $_GET["page"];
			}else{
				$page = 1;
			}
			// End
			// Get limited post
			$start_from = ($page-1)*$per_page;
			$sql = "SELECT * FROM posts limit $start_from,$per_page";
			$getPost = $DB->select($sql);
			if ($getPost):
				while ($result = $getPost->fetch_assoc()):
		?>
		<!-- Show limited post -->
		<div class="col-sm-6">
			<div class="card mt-3">
				<div class="card-header">
					<!-- Post title -->
					<p class="text-center"><?php echo $result['title']?></p>
				</div>
				<div class="card-body">
					<!-- Post content -->
					<p><?php echo $result['content']?></p>
				</div>
			</div>
		</div>
		<?php 
			// End while and if
			endwhile;
			endif;
		?>
	</div>
	<!-- Pagination markup -->
	<div class="pagination-sec mt-4">
		<ul class="pagination">
		  	<?php
				$sql = "SELECT * FROM posts";
				$result = $DB->select($sql);
				$total_rows = mysqli_num_rows($result);
				$toatal_pages = ceil($total_rows/$per_page);
				for ($i = 1; $i <= $toatal_pages; $i++):
			?>
			<li class="page-item
			<?php
				// pagination active class
				if($page == $i){
					echo 'active';
				}
			?>
			" id="<?php echo $i?>">
		  		<a class='page-link' href='index.php?page=<?php echo $i?>'><?php echo $i?></a>
		    </li>
			<?php
				endfor;
			?>
		</ul>
	</div>
</div>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>