# TableTypeDemo
四中列表类型的demo

## 介绍
TableView是iOS开发中经常用到的View，针对不同的显示需求，我们需要不同的Cell来进行显示，比较复杂的显示我们一般会自定义Cell的样式，但是简单的显示就可以靠iOS本身支持的列表类型了。
iOS目前支持四中列表类型，分别是：
* UITableViewCellStyleDefault：默认类型，可以显示图片和文本
* UITableViewCellStyleSubtitle：可以显示图片、文本和子文本
* UITableViewCellStyleValue1：可以显示图片、文本和子文本
* UITableViewCellStyleValue2：可以显示文本和子文本

## 效果图
![](https://github.com/Cloudox/TableTypeDemo/blob/master/screen.jpg)

## 实现方式
```Objective-c
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {  
    UITableViewCell *cell;  
    // 共四种类型  
    switch (indexPath.row) {  
        case 0:// UITableViewCellStyleDefault：默认的类型，支持显示图片和文本  
        {  
            NSString *CellOne = @"CellOne";  
            // 设置tableview类型  
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellOne];  
            // 设置不可点击  
            cell.selectionStyle = UITableViewCellSelectionStyleNone;  
            cell.imageView.image = [UIImage imageNamed:@"icon"];// 图片  
            cell.textLabel.text = @"textLabel";// 文本  
        }  
            break;  
        case 1:// UITableViewCellStyleSubtitle类型，支持显示图片和文本以及子文本  
        {  
            NSString *CellTwo = @"CellTwo";  
            // 设置tableview类型  
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellTwo];  
            // 设置不可点击  
            cell.selectionStyle = UITableViewCellSelectionStyleNone;  
            cell.imageView.image = [UIImage imageNamed:@"icon"];// 图片  
            cell.textLabel.text = @"textLabel";// 文本  
            cell.detailTextLabel.text = @"detailTextLabel";// 子文本  
        }  
            break;  
        case 2:// UITableViewCellStyleValue1类型，支持显示图片和文本以及子文本  
        {  
            NSString *CellThree = @"CellThree";  
            // 设置tableview类型  
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellThree];  
            // 设置不可点击  
            cell.selectionStyle = UITableViewCellSelectionStyleNone;  
            cell.imageView.image = [UIImage imageNamed:@"icon"];// 图片  
            cell.textLabel.text = @"textLabel";// 文本  
            cell.detailTextLabel.text = @"detailTextLabel";// 子文本  
        }  
            break;  
        case 3:// UITableViewCellStyleValue2类型，支持显示文本以及子文本  
        {  
            NSString *CellFour = @"CellFour";  
            // 设置tableview类型  
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CellFour];  
            // 设置不可点击  
            cell.selectionStyle = UITableViewCellSelectionStyleNone;  
            cell.textLabel.text = @"textLabel";// 文本  
            cell.detailTextLabel.text = @"detailTextLabel";// 子文本  
        }  
            break;  
    }  
    return cell;  
}  
```

详情查看[我的博客](http://blog.csdn.net/cloudox_/article/details/50543242)
