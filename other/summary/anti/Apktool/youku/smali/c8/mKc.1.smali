.class public Lc8/mKc;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/oKc;


# static fields
.field public static final STATUS_CLICK:Ljava/lang/String; = "click"

.field public static final STATUS_COMPLETE:Ljava/lang/String; = "complete"

.field public static final STATUS_IMPRESSION:Ljava/lang/String; = "impression"

.field public static final STATUS_MID:Ljava/lang/String; = "midpoint"

.field public static final STATUS_START:Ljava/lang/String; = "start"


# instance fields
.field private adId:Ljava/lang/String;

.field private creativeId:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private statisInfo:Ljava/util/HashMap;

.field private status:Ljava/lang/String;

.field private urls:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/mKc;->statisInfo:Ljava/util/HashMap;

    invoke-static {p4}, Lc8/uKc;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p8, :cond_0

    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lc8/mKc;->adId:Ljava/lang/String;

    iput-object p2, p0, Lc8/mKc;->creativeId:Ljava/lang/String;

    iput-object p3, p0, Lc8/mKc;->fileId:Ljava/lang/String;

    iput-object p4, p0, Lc8/mKc;->status:Ljava/lang/String;

    iput-object p8, p0, Lc8/mKc;->urls:Ljava/util/ArrayList;

    iget-object v0, p0, Lc8/mKc;->statisInfo:Ljava/util/HashMap;

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc8/mKc;->statisInfo:Ljava/util/HashMap;

    const-string/jumbo v1, "dur"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc8/mKc;->statisInfo:Ljava/util/HashMap;

    const-string/jumbo v1, "tl"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public encodeStatistics(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lc8/mKc;->statisInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc8/mKc;->statisInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lc8/mKc;->statisInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ctime"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportUrls()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lc8/mKc;->urls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/mKc;->status:Ljava/lang/String;

    return-object v0
.end method
