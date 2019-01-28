.class public Lcom/youku/service/download/DownloadManager$CacheRequest;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ben;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/service/download/DownloadManager$CacheRequest$Item;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/service/download/DownloadManager$CacheRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Landroid/os/Bundle;

.field private push:Z

.field private showId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private taskIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/service/download/DownloadManager$CacheRequest$Item;",
            ">;"
        }
    .end annotation
.end field

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videos:Ljava/util/List;
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
    .locals 1

    .prologue
    .line 558
    new-instance v0, Lc8/Xdn;

    invoke-direct {v0}, Lc8/Xdn;-><init>()V

    sput-object v0, Lcom/youku/service/download/DownloadManager$CacheRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->source:Ljava/lang/String;

    .line 633
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->data:Landroid/os/Bundle;

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->videos:Ljava/util/List;

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->titles:Ljava/util/List;

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->taskIds:Ljava/util/List;

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->tasks:Ljava/util/List;

    .line 548
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->source:Ljava/lang/String;

    .line 633
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->data:Landroid/os/Bundle;

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->videos:Ljava/util/List;

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->titles:Ljava/util/List;

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->taskIds:Ljava/util/List;

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->tasks:Ljava/util/List;

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->showId:Ljava/lang/String;

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->source:Ljava/lang/String;

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->push:Z

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->data:Landroid/os/Bundle;

    .line 555
    sget-object v0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->tasks:Ljava/util/List;

    .line 556
    return-void

    .line 553
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addExtraData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method public addVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 640
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/youku/service/download/DownloadManager$CacheRequest;->addVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public addVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->videos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->titles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->taskIds:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->tasks:Ljava/util/List;

    new-instance v1, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Rdn;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->showId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/service/download/DownloadManager$CacheRequest$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->tasks:Ljava/util/List;

    return-object v0
.end method

.method public isPush()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->push:Z

    return v0
.end method

.method public make()Landroid/content/Intent;
    .locals 6
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 687
    invoke-static {}, Lc8/ben;->access$800()Landroid/content/Intent;

    move-result-object v0

    .line 688
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v2, "create"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    iget-object v2, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 690
    const-string/jumbo v3, "videoIds"

    iget-object v2, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->videos:Ljava/util/List;

    iget-object v4, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->videos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string/jumbo v3, "videoNames"

    iget-object v2, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->titles:Ljava/util/List;

    iget-object v4, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->titles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object v2, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->showId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 693
    const-string/jumbo v2, "showId"

    iget-object v3, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->showId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    :cond_0
    const-string/jumbo v3, "taskIds"

    iget-object v2, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->taskIds:Ljava/util/List;

    iget-object v4, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->taskIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    iget-object v2, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->source:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 697
    const-string/jumbo v2, "source"

    iget-object v3, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->source:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    :cond_1
    const-string/jumbo v2, "isPushDownload"

    iget-boolean v3, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->push:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 700
    invoke-static {v0}, Lc8/aen;->sign(Landroid/content/Intent;)V

    .line 701
    iget-object v2, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;

    .line 702
    .local v1, "item":Lcom/youku/service/download/DownloadManager$CacheRequest$Item;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->vid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->taskId:Ljava/lang/String;

    goto :goto_0

    .line 704
    .end local v1    # "item":Lcom/youku/service/download/DownloadManager$CacheRequest$Item;
    :cond_2
    const-string/jumbo v2, "request"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 705
    return-object v0
.end method

.method public setPush(Z)V
    .locals 0
    .param p1, "push"    # Z

    .prologue
    .line 659
    iput-boolean p1, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->push:Z

    .line 660
    return-void
.end method

.method public setShowId(Ljava/lang/String;)V
    .locals 0
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->showId:Ljava/lang/String;

    .line 652
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->source:Ljava/lang/String;

    .line 656
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->showId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    iget-boolean v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->push:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 581
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest;->tasks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 582
    return-void

    .line 579
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
