.class public Lc8/Uwf;
.super Ljava/lang/Object;
.source "TBNonCriticalErrorReporter.java"

# interfaces
.implements Lc8/Qwf;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReportAdaptHandler:Lc8/kSb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/Uwf;->mContext:Landroid/content/Context;

    .line 19
    new-instance v0, Lc8/kSb;

    invoke-direct {v0}, Lc8/kSb;-><init>()V

    iput-object v0, p0, Lc8/Uwf;->mReportAdaptHandler:Lc8/kSb;

    .line 20
    return-void
.end method


# virtual methods
.method public onNonCriticalErrorHappen(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 34
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Lc8/dSb;

    invoke-direct {v0}, Lc8/dSb;-><init>()V

    .line 28
    .local v0, "exceptionModule":Lc8/dSb;
    sget-object v1, Lcom/alibaba/motu/crashreportadapter/module/AggregationType;->CONTENT:Lcom/alibaba/motu/crashreportadapter/module/AggregationType;

    iput-object v1, v0, Lc8/dSb;->aggregationType:Lcom/alibaba/motu/crashreportadapter/module/AggregationType;

    .line 29
    sget-object v1, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->IMAGE_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    iput-object v1, v0, Lc8/dSb;->businessType:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    .line 30
    iput-object p1, v0, Lc8/dSb;->exceptionCode:Ljava/lang/String;

    .line 31
    iput-object p3, v0, Lc8/dSb;->exceptionArgs:Ljava/util/Map;

    .line 32
    iput-object p2, v0, Lc8/dSb;->throwable:Ljava/lang/Throwable;

    .line 33
    iget-object v1, p0, Lc8/Uwf;->mReportAdaptHandler:Lc8/kSb;

    iget-object v2, p0, Lc8/Uwf;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lc8/kSb;->adapter(Landroid/content/Context;Lc8/pSb;)V

    goto :goto_0
.end method
