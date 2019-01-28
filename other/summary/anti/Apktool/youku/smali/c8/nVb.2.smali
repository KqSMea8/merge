.class public final Lc8/nVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/LVb;->updateMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultValue:D

.field final synthetic val$max:D

.field final synthetic val$min:D

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lc8/nVb;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lc8/nVb;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lc8/nVb;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lc8/nVb;->val$min:D

    iput-wide p6, p0, Lc8/nVb;->val$max:D

    iput-wide p8, p0, Lc8/nVb;->val$defaultValue:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 378
    :try_start_0
    sget-object v0, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-object v1, p0, Lc8/nVb;->val$module:Ljava/lang/String;

    iget-object v2, p0, Lc8/nVb;->val$monitorPoint:Ljava/lang/String;

    iget-object v3, p0, Lc8/nVb;->val$name:Ljava/lang/String;

    iget-wide v4, p0, Lc8/nVb;->val$min:D

    iget-wide v6, p0, Lc8/nVb;->val$max:D

    iget-wide v8, p0, Lc8/nVb;->val$defaultValue:D

    invoke-interface/range {v0 .. v9}, Lc8/kzb;->updateMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v10

    .line 380
    .local v10, "e":Landroid/os/RemoteException;
    invoke-static {v10}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
