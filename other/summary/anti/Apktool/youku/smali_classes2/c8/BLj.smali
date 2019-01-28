.class public Lc8/BLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Lc8/eUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/CLj;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/CLj;


# direct methods
.method constructor <init>(Lc8/CLj;)V
    .locals 0
    .param p1, "this$1"    # Lc8/CLj;

    .prologue
    .line 627
    iput-object p1, p0, Lc8/BLj;->this$1:Lc8/CLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFailed(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 639
    const-string/jumbo v0, "YKGLOBAL.Youku"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLocationFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public onLocationUpdate(Lcom/youku/lbs/LBSLocation;)V
    .locals 4
    .param p1, "location"    # Lcom/youku/lbs/LBSLocation;

    .prologue
    .line 630
    const-string/jumbo v0, "YKGLOBAL.Youku"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLocationUpdate longitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 631
    invoke-virtual {p1}, Lcom/youku/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " latitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 632
    invoke-virtual {p1}, Lcom/youku/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    invoke-static {v0, v1}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-virtual {p1}, Lcom/youku/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 633
    invoke-virtual {v0, v1, v2}, Lc8/AOp;->setCoordinates(Ljava/lang/String;Ljava/lang/String;)Lc8/AOp;

    .line 635
    return-void
.end method
