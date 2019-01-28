.class public Lc8/sko;
.super Ljava/lang/Object;
.source "Passport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tko;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tko;


# direct methods
.method constructor <init>(Lc8/tko;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tko;

    .prologue
    .line 1138
    iput-object p1, p0, Lc8/sko;->this$0:Lc8/tko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1142
    invoke-static {}, Lc8/Gko;->access$700()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/Gko;->access$800(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    invoke-static {}, Lc8/Gko;->access$600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1144
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lc8/Gko;->access$002(Lc8/Ipo;)Lc8/Ipo;

    .line 1145
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/Gko;->access$902(Z)Z

    .line 1146
    monitor-exit v1

    .line 1148
    :cond_0
    return-void

    .line 1146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
