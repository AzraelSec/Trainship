.class Landroid/support/v4/view/ViewCompatMarshmallow;
.super Ljava/lang/Object;
.source "ViewCompatMarshmallow.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .locals 0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getScrollIndicators()I

    move-result p0

    return p0
.end method

.method static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollIndicators(I)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setScrollIndicators(II)V

    return-void
.end method
