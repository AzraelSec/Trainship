.class public Lcom/google/android/gms/internal/measurement/zzep;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzep$zze;,
        Lcom/google/android/gms/internal/measurement/zzep$zzc;,
        Lcom/google/android/gms/internal/measurement/zzep$zzd;,
        Lcom/google/android/gms/internal/measurement/zzep$zza;,
        Lcom/google/android/gms/internal/measurement/zzep$zzb;
    }
.end annotation


# static fields
.field private static volatile zzadz:Lcom/google/android/gms/internal/measurement/zzep;


# instance fields
.field private final zzadw:Ljava/lang/String;

.field private final zzaea:Ljava/util/concurrent/ExecutorService;

.field private final zzaeb:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field private zzaec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/measurement/internal/zzcw;",
            "Lcom/google/android/gms/internal/measurement/zzep$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzaed:I

.field private zzaee:Z

.field private zzaef:Ljava/lang/String;

.field private zzaeg:Lcom/google/android/gms/internal/measurement/zzec;

.field protected final zzrz:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 10
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/zzep;->zze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzadw:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "FA"

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzadw:Ljava/lang/String;

    .line 14
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzrz:Lcom/google/android/gms/common/util/Clock;

    .line 17
    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 18
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaea:Ljava/util/concurrent/ExecutorService;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    if-nez p2, :cond_2

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzadw:Ljava/lang/String;

    const-string v0, "Unable to register lifecycle notifications. Application null."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 23
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzep$zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzep$zze;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    invoke-virtual {p2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 24
    :goto_2
    new-instance p2, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaeb:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzep;->zzf(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzep;->zzgb()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p2, 0x1

    :goto_4
    if-nez p2, :cond_5

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaef:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaee:Z

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzadw:Ljava/lang/String;

    const-string p2, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 32
    :cond_5
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/zzep;->zze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "fa"

    .line 33
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaef:Ljava/lang/String;

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzadw:Ljava/lang/String;

    const-string p2, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaee:Z

    return-void

    :cond_6
    if-nez p3, :cond_7

    const/4 p2, 0x1

    goto :goto_5

    :cond_7
    const/4 p2, 0x0

    :goto_5
    if-nez p4, :cond_8

    const/4 v0, 0x1

    :cond_8
    xor-int/2addr p2, v0

    if-eqz p2, :cond_a

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzadw:Ljava/lang/String;

    const-string v0, "Specified origin or custom app id is null. Both parameters will be ignored."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 40
    :cond_9
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaef:Ljava/lang/String;

    .line 41
    :cond_a
    :goto_6
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzeq;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzec;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaeg:Lcom/google/android/gms/internal/measurement/zzec;

    return-object p1
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzep;
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzep;->zzadz:Lcom/google/android/gms/internal/measurement/zzep;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/google/android/gms/internal/measurement/zzep;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzep;->zzadz:Lcom/google/android/gms/internal/measurement/zzep;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzep;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzep;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzep;->zzadz:Lcom/google/android/gms/internal/measurement/zzep;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzep;->zzadz:Lcom/google/android/gms/internal/measurement/zzep;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzep;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaec:Ljava/util/Map;

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaea:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zzb;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/Exception;ZZ)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method private final zza(Ljava/lang/Exception;ZZ)V
    .locals 6

    .line 60
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaee:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaee:Z

    if-eqz p2, :cond_0

    .line 62
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzadw:Ljava/lang/String;

    const-string p3, "Data collection startup failed. No data will be collected."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p2, "Error with data collection. Data lost."

    if-eqz p3, :cond_1

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzep;->zzc(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzadw:Ljava/lang/String;

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .locals 8

    .line 82
    new-instance p4, Lcom/google/android/gms/internal/measurement/zzfj;

    const/4 v6, 0x1

    move-object v0, p4

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzfj;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzep;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaee:Z

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 152
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzep;->zze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzep;)Lcom/google/android/gms/internal/measurement/zzec;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaeg:Lcom/google/android/gms/internal/measurement/zzec;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzep;)Ljava/lang/String;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzadw:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzep;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaec:Ljava/util/Map;

    return-object p0
.end method

.method private static zze(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzep;->zzgb()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzf(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/GoogleServices;->initialize(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    .line 44
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->getGoogleAppId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method private static zzgb()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 68
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private static zzh(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 58
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static zzi(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 59
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic zzj(Landroid/content/Context;)I
    .locals 0

    .line 153
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzep;->zzi(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic zzk(Landroid/content/Context;)I
    .locals 0

    .line 154
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzep;->zzh(Landroid/content/Context;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final beginAdUnitExposure(Ljava/lang/String;)V
    .locals 1

    .line 100
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzev;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzev;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 88
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzer;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzer;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final endAdUnitExposure(Ljava/lang/String;)V
    .locals 1

    .line 102
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzew;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzew;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final generateEventId()J
    .locals 5

    .line 110
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzep$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzep$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    .line 111
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzfa;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zza;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    const-wide/16 v1, 0x1f4

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzm(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzrz:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaed:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAppIdOrigin()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaef:Ljava/lang/String;

    return-object v0
.end method

.method public final getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzep$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzep$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    .line 91
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzes;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzes;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzep$zza;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    const-wide/16 p1, 0x1388

    .line 92
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzl(J)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method public final getCurrentScreenClass()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzep$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzep$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    .line 120
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzfc;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zza;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    const-wide/16 v1, 0x1f4

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzk(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentScreenName()Ljava/lang/String;
    .locals 3

    .line 116
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzep$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzep$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    .line 117
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzfb;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zza;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    const-wide/16 v1, 0x1f4

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzk(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGmpAppId()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzep$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzep$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    .line 105
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzey;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzey;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zza;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    const-wide/16 v1, 0x1f4

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzk(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxUserProperties(Ljava/lang/String;)I
    .locals 3

    .line 141
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzep$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzep$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    .line 142
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfg;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzfg;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzep$zza;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    const-wide/16 v1, 0x2710

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzn(J)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0x19

    return p1

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzep$zza;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/measurement/zzep$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    .line 123
    new-instance v7, Lcom/google/android/gms/internal/measurement/zzfd;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzfd;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzep$zza;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    const-wide/16 p1, 0x1388

    .line 124
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzo(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 125
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 128
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 130
    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 131
    :cond_2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p2

    .line 126
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final logEventInternalNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 7

    .line 80
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final setConditionalUserProperty(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzfl;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzet;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzet;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final setMeasurementEnabled(Z)V
    .locals 1

    .line 98
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 2

    .line 136
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzep$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzep$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    .line 137
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzff;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzff;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzep$zza;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    if-eqz p2, :cond_0

    const-wide/16 p1, 0x1388

    .line 139
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzo(J)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzcv;)V
    .locals 1

    .line 72
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzex;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzex;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/measurement/internal/zzcv;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzcw;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/measurement/internal/zzcw;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 6

    .line 84
    new-instance p4, Lcom/google/android/gms/internal/measurement/zzfk;

    const/4 v5, 0x1

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzfk;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzcw;)V
    .locals 1

    .line 76
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/measurement/internal/zzcw;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method public final zzc(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 134
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfe;

    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzfe;-><init>(Lcom/google/android/gms/internal/measurement/zzep;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    return-void
.end method

.method protected final zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzec;
    .locals 2

    .line 50
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v1, "com.google.android.gms.measurement.dynamite"

    .line 51
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string v0, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 53
    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzed;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Ljava/lang/Exception;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzga()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep;->zzaeb:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    return-object v0
.end method

.method public final zzgc()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzep$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzep$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    .line 108
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzez;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzep$zza;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep$zzb;)V

    const-wide/16 v1, 0x32

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzk(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
