.class public Lc8/CLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->mtopLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method constructor <init>(Lc8/KLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 612
    iput-object p1, p0, Lc8/CLj;->this$0:Lc8/KLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 616
    invoke-static {}, Lc8/iUi;->getInstance()Lc8/iUi;

    move-result-object v1

    iget-object v2, p0, Lc8/CLj;->this$0:Lc8/KLj;

    .line 617
    invoke-virtual {v2}, Lc8/KLj;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 616
    invoke-virtual {v1, v2}, Lc8/iUi;->getLastKnownLocation(Landroid/content/Context;)Lcom/youku/lbs/LBSLocation;

    move-result-object v0

    .line 619
    .local v0, "lbsLocation":Lcom/youku/lbs/LBSLocation;
    if-eqz v0, :cond_0

    .line 620
    const-string/jumbo v1, "YKGLOBAL.Youku"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLocationUpdate local longitude:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 621
    invoke-virtual {v0}, Lcom/youku/lbs/LBSLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " latitude:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 622
    invoke-virtual {v0}, Lcom/youku/lbs/LBSLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    invoke-static {v1, v2}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/youku/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-virtual {v0}, Lcom/youku/lbs/LBSLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 623
    invoke-virtual {v1, v2, v3}, Lc8/AOp;->setCoordinates(Ljava/lang/String;Ljava/lang/String;)Lc8/AOp;

    .line 627
    :cond_0
    invoke-static {}, Lc8/iUi;->getInstance()Lc8/iUi;

    move-result-object v1

    new-instance v2, Lc8/BLj;

    invoke-direct {v2, p0}, Lc8/BLj;-><init>(Lc8/CLj;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/CLj;->this$0:Lc8/KLj;

    .line 641
    invoke-virtual {v4}, Lc8/KLj;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 627
    invoke-virtual {v1, v2, v3, v4}, Lc8/iUi;->requestLocationUpdates(Lc8/eUi;ZLandroid/content/Context;)V

    .line 642
    return-void
.end method
