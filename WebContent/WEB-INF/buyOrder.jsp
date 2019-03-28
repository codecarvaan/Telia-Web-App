<!DOCTYPE html>
<html lang="en">
<head>
  <title>Buy Order Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
 <form method="post" name="buyOrderForm" action="buyOrder.htm">
<div class="container">
  <h2>Buy Order</h2>
  <div class="panel-group">
    <div class="panel panel-inputs">
      <div class="panel-heading"></div>
      <div class="panel-body">
		<div class="form-group row">
			<label for="colFormEnv" class="col-sm-2 col-form-label col-form-Environment">Environment</label>
			<div class="col-sm-3">
			  <select id="env" class="form-control">
				<option selected>DEV...</option>
				<option>...</option>
			  </select>
			</div>
		</div>
		<div class="form-group">
			<div class="form-check">
				<label class="form-check-label" for="gridCheckNHF">NHF Call</label>
				<input class="form-check-input" type="checkbox" id="gridCheckNHF">			  
			</div>
		</div>		
		<div class="form-group row">
			<label for="colFormSSN" class="col-sm-2 col-form-label col-form-SSN">SSN</label>
			<div class="col-sm-3">
			  <input type="text" class="form-control" id="colFormSSN">
			</div>
		</div>
		<div class="form-group row">
			<label for="colFormQuote" class="col-sm-2 col-form-label col-form-Quote">Quote Num</label>
			<div class="col-sm-3">
			  <input type="text" class="form-control" id="colFormQuote">
			</div>
		</div>	  
	  </div>
    </div>
	<div class="panel panel-orderInputs">
      <div class="panel-heading"></div>
      <div class="panel-body">
		<div class="form-group row">
			<label for="colFormOffer" class="col-sm-2 col-form-label col-form-Offer">Offer Name</label>
			<div class="col-sm-2">
			  <select id="offerName" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
			<label for="colFormHardware1" class="col-sm-2 col-form-label col-form-Hardware1">Hardware</label>
			<div class="col-sm-4">
			  <select id="hardware1" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
		</div>
		<div class="form-group row">
			<label for="colFormCommit1" class="col-sm-2 col-form-label col-form-Commit1">Commit Duration (Months)</label>
			<div class="col-sm-2">
			  <select id="commit1" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
			<label for="colFormInstallment1" class="col-sm-2 col-form-label col-form-Installment1">Installment</label>
			<div class="col-sm-2">
			  <select id="installment1" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
			<label for="colFormInsurance1" class="col-sm-1 col-form-label col-form-Insurance1">Insurance</label>
			<div class="col-sm-2">
			  <select id="insurance1" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
		</div>
		<div class="form-group row">			
			<div class="col-sm-4">
			</div>
			<label for="colFormPrice" class="col-sm-2 col-form-label col-form-Price">Unit Price</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="colFormPrice">
			</div>
		</div>			
		<div class="form-group row">
			<label for="colFormSupplementary1" class="col-sm-2 col-form-label col-form-Supplementary1">Supplementary 1</label>
			<div class="col-sm-2">
			  <select id="supplementary1" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
			<label for="colFormHardware2" class="col-sm-2 col-form-label col-form-Hardware2">Hardware</label>
			<div class="col-sm-4">
			  <select id="hardware2" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
		</div>
		<div class="form-group row">
			<label for="colFormCommit2" class="col-sm-2 col-form-label col-form-Commit2">Commit Duration (Months)</label>
			<div class="col-sm-2">
			  <select id="commit2" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
			<div class="form-check">
			<input class="form-check-input" type="checkbox" id="installment2">
			<label for="colFormInstallment2" class="col-sm-2 col-form-label col-form-Installment2">Installment</label>
			<div class="col-sm-2">
			  <select id="installment2" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>			
			<input class="form-check-input" type="checkbox" id="insurance2">
			<label for="colFormInsurance2" class="col-sm-1 col-form-label col-form-Insurance2">Insurance</label>
			<div class="col-sm-2">
			  <select id="insurance2" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="colFormQuantity1" class="col-sm-2 col-form-label col-form-Quantity1">Quantity</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="colFormQuantity1">
			</div>
		</div>
		<div class="form-group row">
			<label for="colFormSupplementary2" class="col-sm-2 col-form-label col-form-Supplementary2">Supplementary 2</label>
			<div class="col-sm-2">
			  <select id="supplementary2" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
			<label for="colFormHardware3" class="col-sm-2 col-form-label col-form-Hardware3">Hardware</label>
			<div class="col-sm-4">
			  <select id="hardware3" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
		</div>
		<div class="form-group row">
			<label for="colFormCommit3" class="col-sm-2 col-form-label col-form-Commit3">Commit Duration (Months)</label>
			<div class="col-sm-2">
			  <select id="commit3" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
			<div class="form-check">
			<input class="form-check-input" type="checkbox" id="installment3">
			<label for="colFormInstallment3" class="col-sm-2 col-form-label col-form-Installment3">Installment</label>
			<div class="col-sm-2">
			  <select id="installment3" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
			<input class="form-check-input" type="checkbox" id="insurance3">			
			<label for="colFormInsurance3" class="col-sm-1 col-form-label col-form-Insurance3">Insurance</label>
			<div class="col-sm-2">
			  <select id="insurance3" class="form-control">
				<option selected> </option>
				<option>...</option>
			  </select>
			</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="colFormQuantity2" class="col-sm-2 col-form-label col-form-Quantity2">Quantity</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="colFormQuantity2">
			</div>
		</div>
		
		</div>
		</div>
		<div class="panel panel-button">
      		<div class="panel-heading"></div>
      			<div class="panel-body">
      			<div class="col-sm-5">
      			<button type="submit" class="btn btn-primary">Create Order Template</button>
      			</div>
      		</div>
      	</div>
    
	</div>
	</div>
</form>
</body>
</html>