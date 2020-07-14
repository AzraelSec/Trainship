.class Lcom/hemisoft/happytest/whatsport/MainActivity$2;
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

    .line 39
    iput-object p1, p0, Lcom/hemisoft/happytest/whatsport/MainActivity$2;->this$0:Lcom/hemisoft/happytest/whatsport/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "https://github.com/Hemisoft/policy/blob/master/%22What%20animal%20are%20you%3F%20Test%22%20Privacy%20policy"

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 46
    iget-object p1, p0, Lcom/hemisoft/happytest/whatsport/MainActivity$2;->this$0:Lcom/hemisoft/happytest/whatsport/MainActivity;

    invoke-virtual {p1, v0}, Lcom/hemisoft/happytest/whatsport/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
