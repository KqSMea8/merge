.class public Lc8/TF;
.super Ljava/lang/Object;
.source "WVMonitorData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "extra"
.end annotation


# instance fields
.field public netStat:Lc8/bG;

.field public resStat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/UF;",
            ">;"
        }
    .end annotation
.end field

.field public selfDefine:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public statusCode:I

.field final synthetic this$0:Lc8/WF;

.field public via:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/WF;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Lc8/TF;->this$0:Lc8/WF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/TF;->netStat:Lc8/bG;

    .line 202
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/TF;->selfDefine:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/TF;->resStat:Ljava/util/Map;

    return-void
.end method
