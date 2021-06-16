
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-6">
    <div class="card">
        <form method="post" action="product">
            <input type="hidden" value="createProduct" name="action">
            <div class="card-header">
                <div class="card-title">Create Product</div>
            </div>
            <div class="card-body">
                <div class="form-group form-inline">
                    <label for="code" class="col-md-3 col-form-label">Product Code: </label>
                    <div class="col-md-9 p-0">
                        <input type="text" class="form-control input-full" name="pcode" id="code" placeholder="Enter Input">
                    </div>
                </div>
                <div class="form-group form-inline">
                    <label for="pname" class="col-md-3 col-form-label">Product Name: </label>
                    <div class="col-md-9 p-0">
                        <input type="text" class="form-control input-full" name="pname" id="pname" placeholder="Enter Input">
                    </div>
                </div>
                <div class="form-group form-inline">
                    <label for="price" class="col-md-3 col-form-label">Price: </label>
                    <div class="col-md-9 p-0">
                        <input type="text" class="form-control input-full" name="price" id="price" placeholder="Enter Input">
                    </div>
                </div>
                <div class="form-group form-inline">
                    <label for="quantity" class="col-md-3 col-form-label">Quantity: </label>
                    <div class="col-md-9 p-0">
                        <input type="text" class="form-control input-full" name="quantity" id="quantity" placeholder="Enter Input">
                    </div>
                </div>

                <div class="form-group">
                    <label for="category">Category</label>
                    <select class="form-control" name = "cname" id="category">
                        <option value="1">IPHONE</option>
                        <option value="2">IPAD</option>
                        <option value="3">WATCH</option>
                        <option value="4">MACBOOK</option>
                        <option value="5">ACCESORIES</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="pimage">Chooise Image: </label>
                    <input type="file" class="form-control-file" name="pimage" id="pimage">
                </div>

                <div class="form-group form-inline">
                    <label for="color" class="col-md-3 col-form-label">Color: </label>
                    <div class="col-md-9 p-0">
                        <input type="text" class="form-control input-full" name="color" id="color" placeholder="Enter Input">
                    </div>
                </div>
                <div class="form-group">
                    <label for="comment">Descreption: </label>
                    <textarea class="form-control"  name = "description" id="comment" rows="5">

                </textarea>
                </div>

            </div>
            <div class="card-action">
                <button  type="submit" class="btn btn-success">Submit</button>
                <button  type="reset" class="btn btn-danger">Cancel</button>
            </div>
        </form>
    </div>
</div>