.class Lcom/hemisoft/happytest/whatsport/LoadingActivity$1;
.super Ljava/util/TimerTask;
.source "LoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hemisoft/happytest/whatsport/LoadingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hemisoft/happytest/whatsport/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/hemisoft/happytest/whatsport/LoadingActivity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/hemisoft/happytest/whatsport/LoadingActivity$1;->this$0:Lcom/hemisoft/happytest/whatsport/LoadingActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 31
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hemisoft/happytest/whatsport/LoadingActivity$1;->this$0:Lcom/hemisoft/happytest/whatsport/LoadingActivity;

    const-class v2, Lcom/hemisoft/happytest/whatsport/ResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    iget-object v1, p0, Lcom/hemisoft/happytest/whatsport/LoadingActivity$1;->this$0:Lcom/hemisoft/happytest/whatsport/LoadingActivity;

    invoke-virtual {v1, v0}, Lcom/hemisoft/happytest/whatsport/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
