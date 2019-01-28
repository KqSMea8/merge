.class public Lc8/SMg;
.super Ljava/lang/Object;
.source "GlobalsContext.java"


# static fields
.field public static final CONFIG_JSON:Ljava/lang/String; = "configJson"

.field public static final PAGELIST:Ljava/lang/String; = "pageList"

.field public static appMonitorOpen:Z

.field public static clickBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static omitOpen:Z

.field public static start:J

.field public static trackerClickOpen:Z

.field public static trackerExposureOpen:Z

.field public static trackerOpen:Z

.field public static utFilterKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15
    sput-boolean v1, Lc8/SMg;->trackerOpen:Z

    .line 20
    sput-boolean v1, Lc8/SMg;->trackerClickOpen:Z

    .line 25
    sput-boolean v1, Lc8/SMg;->trackerExposureOpen:Z

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lc8/SMg;->omitOpen:Z

    .line 35
    sput-boolean v1, Lc8/SMg;->appMonitorOpen:Z

    .line 37
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/SMg;->start:J

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/SMg;->utFilterKeyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
