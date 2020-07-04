.class Lcom/hemisoft/happytest/whatsport/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hemisoft/happytest/whatsport/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hemisoft/happytest/whatsport/MainActivity;


# direct methods
.method constructor <init>(Lcom/hemisoft/happytest/whatsport/MainActivity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/hemisoft/happytest/whatsport/MainActivity$1;->this$0:Lcom/hemisoft/happytest/whatsport/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 33
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/MainActivity$1;->this$0:Lcom/hemisoft/happytest/whatsport/MainActivity;

    const-class v1, Lcom/hemisoft/happytest/whatsport/TestActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/MainActivity$1;->this$0:Lcom/hemisoft/happytest/whatsport/MainActivity;

    invoke-virtual {v0, p1}, Lcom/hemisoft/happytest/whatsport/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
