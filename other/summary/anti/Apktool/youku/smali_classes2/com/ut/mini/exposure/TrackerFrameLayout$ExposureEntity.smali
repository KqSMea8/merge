.class public Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;
.super Ljava/lang/Object;
.source "TrackerFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/exposure/TrackerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExposureEntity"
.end annotation


# instance fields
.field public area:D

.field public duration:J

.field public exargs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public scm:Ljava/lang/String;

.field public spm:Ljava/lang/String;

.field final synthetic this$0:Lcom/ut/mini/exposure/TrackerFrameLayout;

.field public viewid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ut/mini/exposure/TrackerFrameLayout;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JDLjava/lang/String;)V
    .locals 3
    .param p2, "spm"    # Ljava/lang/String;
    .param p3, "scm"    # Ljava/lang/String;
    .param p4, "exargs"    # Ljava/util/Map;
    .param p5, "duration"    # J
    .param p7, "area"    # D
    .param p9, "viewId"    # Ljava/lang/String;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->this$0:Lcom/ut/mini/exposure/TrackerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->duration:J

    .line 585
    iput-object p2, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->spm:Ljava/lang/String;

    .line 586
    iput-object p3, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->scm:Ljava/lang/String;

    .line 587
    iput-object p4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->exargs:Ljava/util/Map;

    .line 588
    iput-wide p5, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->duration:J

    .line 589
    iput-wide p7, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->area:D

    .line 590
    iput-object p9, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->viewid:Ljava/lang/String;

    .line 591
    return-void
.end method


# virtual methods
.method public length()I
    .locals 5

    .prologue
    .line 594
    const/4 v2, 0x0

    .line 595
    .local v2, "length":I
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->spm:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 596
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->spm:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 598
    :cond_0
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->scm:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 599
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->scm:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 601
    :cond_1
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->exargs:Ljava/util/Map;

    if-eqz v4, :cond_4

    .line 602
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->exargs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 603
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 604
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 606
    :cond_2
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->exargs:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 607
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 608
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 610
    :cond_3
    add-int/lit8 v2, v2, 0x5

    .line 611
    goto :goto_0

    .line 614
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    return v2
.end method
