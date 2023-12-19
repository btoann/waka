<h3>Giỏ hàng của bạn</h3>
<table class="table">
        <thead>
            <tr>
                <th>Anh</th>
                <th>Ten SP</th>
                <th>So luong</th>
                <th>Gia</th>
                <th>Thanh tien</th>
            </tr>
        </thead>
        <tbody>
        <?php

            foreach ($_SESSION['carts'] as $p){
            echo '<tr>
                <td><img src="images/'.$p['image'].'" width="50px"></td>
                <td>'.$p['name'].'</td>
                <td>'.$p['quantity'].'</td>
                <td>'.$p['price'].'</td>
                <td>'.$p['price']*$p['quantity'].'</td>
            </tr>';
        }
        ?>
        </tbody>
    </table>

<div class="box_center pd_top_100">
    <h3 style="width:100%">Thông tin người đặt hàng</h3>
    <form method="post" action="index.php?ctrl=cart&action=checkout">
        <div class="row">
            <div class="col-md-4">
                Họ va ten
            </div>
            <div class="col-md-8">
                <input type="text" name="name" class="form-control" required/>
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="col-md-4">
                Email:
            </div>
            <div class="col-md-8">
                <input type="email" name="email" required/>
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="col-md-4">
                Địa chỉ:
            </div>
            <div class="col-md-8">
                <input type="text" name="address" class="form-control" required/>
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="col-md-4">
                So điện thoại:
            </div>
            <div class="col-md-8">
                <input type="text" name="tel" class="form-control" required/>
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="col-md-12">
                <button type="submit" name="submit" class="btn btn-primary">
                    Đặt hàng
                </button>
            </div>
        </div>
        <br/>
    </form>
</div>
