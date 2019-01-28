.class public Lc8/XHg;
.super Ljava/lang/Object;
.source "UTMapContainer.java"


# static fields
.field public static pageNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static pluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static spmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/youku/analytics/utils/UTMapContainer$1;

    invoke-direct {v0}, Lcom/youku/analytics/utils/UTMapContainer$1;-><init>()V

    sput-object v0, Lc8/XHg;->spmMap:Ljava/util/HashMap;

    .line 554
    new-instance v0, Lcom/youku/analytics/utils/UTMapContainer$2;

    invoke-direct {v0}, Lcom/youku/analytics/utils/UTMapContainer$2;-><init>()V

    sput-object v0, Lc8/XHg;->pluginMap:Ljava/util/HashMap;

    .line 1096
    new-instance v0, Lcom/youku/analytics/utils/UTMapContainer$3;

    invoke-direct {v0}, Lcom/youku/analytics/utils/UTMapContainer$3;-><init>()V

    sput-object v0, Lc8/XHg;->pageNameMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
