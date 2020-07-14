.class Lcom/hemisoft/happytest/whatsport/ResultActivity$1;
.super Ljava/lang/Object;
.source "ResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hemisoft/happytest/whatsport/ResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hemisoft/happytest/whatsport/ResultActivity;


# direct methods
.method constructor <init>(Lcom/hemisoft/happytest/whatsport/ResultActivity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity$1;->this$0:Lcom/hemisoft/happytest/whatsport/ResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 33
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity$1;->this$0:Lcom/hemisoft/happytest/whatsport/ResultActivity;

    const-class v1, Lcom/hemisoft/happytest/whatsport/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity$1;->this$0:Lcom/hemisoft/happytest/whatsport/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
