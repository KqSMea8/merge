.class public Lc8/Lbo;
.super Landroid/support/v4/view/PagerAdapter;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FakeAdapter"
.end annotation


# instance fields
.field private dataList:Ljava/util/List;

.field final synthetic this$0:Lc8/Mbo;


# direct methods
.method public constructor <init>(Lc8/Mbo;Ljava/util/List;)V
    .locals 0
    .param p2, "dataList"    # Ljava/util/List;

    .prologue
    .line 412
    iput-object p1, p0, Lc8/Lbo;->this$0:Lc8/Mbo;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 413
    iput-object p2, p0, Lc8/Lbo;->dataList:Ljava/util/List;

    .line 414
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lc8/Lbo;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method
