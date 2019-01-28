.class public Lc8/Ezk;
.super Ljava/lang/Object;
.source "CrashHandlerInitPreLauncher.java"

# interfaces
.implements Lc8/SSb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gzk;->initCrashHandler(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gzk;

.field final synthetic val$base:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/Gzk;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Gzk;

    .prologue
    .line 100
    iput-object p1, p0, Lc8/Ezk;->this$0:Lc8/Gzk;

    iput-object p2, p0, Lc8/Ezk;->val$base:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v0, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v1, p0, Lc8/Ezk;->val$base:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/Gzk;->getMTLMetaData(Ljava/util/Map;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
