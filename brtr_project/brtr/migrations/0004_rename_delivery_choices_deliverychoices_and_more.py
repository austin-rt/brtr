# Generated by Django 4.1.1 on 2022-09-06 00:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('brtr', '0003_delivery_choices_rename_sale_product_for_sale_and_more'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Delivery_Choices',
            new_name='DeliveryChoices',
        ),
        migrations.RenameModel(
            old_name='Product_Review',
            new_name='ProductReview',
        ),
        migrations.RenameModel(
            old_name='User_Review',
            new_name='UserReview',
        ),
        migrations.AddField(
            model_name='order',
            name='date_placed',
            field=models.DateTimeField(auto_now=True, null=True),
        ),
    ]
