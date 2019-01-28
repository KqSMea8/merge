.class public Lc8/fB;
.super Ljava/lang/Object;
.source "AtlasAlarmer.java"

# interfaces
.implements Lc8/cB;


# static fields
.field private static externalMonitor:Lc8/cB;

.field private static singleton:Lc8/fB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/fB;
    .locals 2

    .prologue
    .line 223
    const-class v1, Lc8/fB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/fB;->singleton:Lc8/fB;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lc8/fB;

    invoke-direct {v0}, Lc8/fB;-><init>()V

    sput-object v0, Lc8/fB;->singleton:Lc8/fB;

    .line 226
    :cond_0
    sget-object v0, Lc8/fB;->singleton:Lc8/fB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setExternalAlarmer(Lc8/cB;)V
    .locals 0
    .param p0, "alarmer"    # Lc8/cB;

    .prologue
    .line 230
    sput-object p0, Lc8/fB;->externalMonitor:Lc8/cB;

    .line 231
    return-void
.end method


# virtual methods
.method public commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method

.method public commitSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 241
    return-void
.end method
