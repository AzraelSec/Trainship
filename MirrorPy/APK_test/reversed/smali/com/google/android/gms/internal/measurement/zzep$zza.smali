.class final Lcom/google/android/gms/internal/measurement/zzep$zza;
.super Lcom/google/android/gms/internal/measurement/zzeg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private final synthetic zzaek:Lcom/google/android/gms/internal/measurement/zzep;

.field private final zzafi:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private zzafj:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzep;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzeg;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzafi:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "r"

    .line 24
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v7, "Unexpected object type. Expected, Received"

    .line 28
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    const/4 v2, 0x5

    move-object v3, v7

    move-object v4, p2

    move-object v5, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzep;->zzc(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzep;->zzc(Lcom/google/android/gms/internal/measurement/zzep;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ": %s, %s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    throw v0

    :cond_0
    return-object v0

    :cond_1
    return-object v0
.end method

.method private final zzp(J)Landroid/os/Bundle;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzafi:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzafj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 17
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzafi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 20
    :try_start_2
    monitor-exit v0

    return-object p1

    .line 21
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzafi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzafi:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzafi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzafj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzafi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzafi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    throw p1

    :catchall_1
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method final zzk(J)Ljava/lang/String;
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzp(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method final zzl(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 p1, 0x1388

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzp(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method final zzm(J)Ljava/lang/Long;
    .locals 0

    const-wide/16 p1, 0x1f4

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzp(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/lang/Long;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method final zzn(J)Ljava/lang/Integer;
    .locals 0

    const-wide/16 p1, 0x2710

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzp(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/lang/Integer;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method final zzo(J)Landroid/os/Bundle;
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzp(J)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
