.class Lcom/hemisoft/happytest/whatsport/ResultActivity$2;
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

    .line 39
    iput-object p1, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity$2;->this$0:Lcom/hemisoft/happytest/whatsport/ResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "market://search?q=pub: Hemisoft"

    .line 43
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/hemisoft/happytest/whatsport/ResultActivity$2;->this$0:Lcom/hemisoft/happytest/whatsport/ResultActivity;

    invoke-virtual {v0, p1}, Lcom/hemisoft/happytest/whatsport/ResultActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "https://play.google.com/store/search?q=com.hemisoft.happytest&c=apps"

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    return-void
.end method
