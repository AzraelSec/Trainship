.class Landroid/support/v4/view/ViewCompatICSMr1;
.super Ljava/lang/Object;
.source "ViewCompatICSMr1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xf
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .locals 0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p0

    return p0
.end method
