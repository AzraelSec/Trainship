.class final Lcom/google/android/gms/internal/measurement/zzeq;
.super Lcom/google/android/gms/internal/measurement/zzep$zzb;


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzaeh:Ljava/lang/String;

.field private final synthetic zzaei:Ljava/lang/String;

.field private final synthetic zzaej:Landroid/os/Bundle;

.field private final synthetic zzaek:Lcom/google/android/gms/internal/measurement/zzep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzep;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzeq;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaeh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaei:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaej:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzep$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    return-void
.end method


# virtual methods
.method public final zzgd()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Ljava/util/Map;)Ljava/util/Map;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzeq;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzep;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzec;

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzep;->zzb(Lcom/google/android/gms/internal/measurement/zzep;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzep;->zzc(Lcom/google/android/gms/internal/measurement/zzep;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to connect to measurement client."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaeh:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaei:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaei:Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaeh:Ljava/lang/String;

    .line 13
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzep;->zzc(Lcom/google/android/gms/internal/measurement/zzep;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v2

    move-object v11, v3

    move-object v9, v4

    goto :goto_0

    :cond_1
    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeq;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzep;->zzj(Landroid/content/Context;)I

    move-result v2

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeq;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzep;->zzk(Landroid/content/Context;)I

    move-result v3

    .line 16
    new-instance v13, Lcom/google/android/gms/internal/measurement/zzen;

    const-wide/16 v4, 0x32c9

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v6, v6

    if-ge v3, v2, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    iget-object v12, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaej:Landroid/os/Bundle;

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/measurement/zzen;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzep;->zzb(Lcom/google/android/gms/internal/measurement/zzep;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeq;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzeq;->timestamp:J

    invoke-interface {v2, v3, v13, v4, v5}, Lcom/google/android/gms/internal/measurement/zzec;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzen;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v3, v2, v1, v0}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/Exception;ZZ)V

    return-void
.end method
