.class Landroid/support/v4/app/ActivityCompatApi23;
.super Ljava/lang/Object;
.source "ActivityCompatApi23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;,
        Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;,
        Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;,
        Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCallback(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;
    .locals 1

    if-eqz p0, :cond_0

    .line 70
    new-instance v0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;-><init>(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 1

    .line 45
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    .line 47
    invoke-interface {v0, p2}, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
    .locals 0

    .line 59
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatApi23;->createCallback(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
    .locals 0

    .line 64
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatApi23;->createCallback(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
