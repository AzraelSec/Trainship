.class final Lcom/google/android/gms/ads/internal/zzbt;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbra:Lcom/google/android/gms/ads/internal/zzbp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/zzbp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzbp;Lcom/google/android/gms/ads/internal/zzbq;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzbt;-><init>(Lcom/google/android/gms/ads/internal/zzbp;)V

    return-void
.end method

.method private final varargs zza([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzbp;->zze(Lcom/google/android/gms/ads/internal/zzbp;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaan;->zzcvi:Lcom/google/android/gms/internal/ads/zzaac;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwu;->zzpz()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaak;->zzd(Lcom/google/android/gms/internal/ads/zzaac;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcu;

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;Lcom/google/android/gms/internal/ads/zzcu;)Lcom/google/android/gms/internal/ads/zzcu;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zzkw()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzbt;->zza([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzbp;->zzf(Lcom/google/android/gms/ads/internal/zzbp;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzbra:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzbp;->zzf(Lcom/google/android/gms/ads/internal/zzbp;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
