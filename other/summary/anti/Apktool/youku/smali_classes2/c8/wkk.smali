.class public Lc8/wkk;
.super Ljava/lang/Object;
.source "ExposureInfo.java"


# instance fields
.field public drawerName:Ljava/lang/String;

.field public fullCardView:Landroid/view/View;

.field public functionInfo:Lc8/zkk;

.field public group_position:I

.field public id:Ljava/lang/String;

.field public isExposure:Z

.field public item_position:I

.field public object_id:Ljava/lang/String;

.field public object_type:Ljava/lang/String;

.field public playRelatedPart:Lcom/youku/phone/detail/data/PlayRelatedPart;

.field public playRelatedVideo:Lcom/youku/phone/detail/data/PlayRelatedVideo;

.field public seriesVideo:Lcom/youku/phone/detail/data/SeriesVideo;

.field public sideSlipInfo:Lc8/MVo;

.field public sideslipContent:Lc8/Hkk;

.field public smallCardView:Landroid/view/View;

.field public starInfo:Lc8/Kkk;

.field public testId:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "smallCardView"    # Landroid/view/View;
    .param p2, "item_position"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lc8/wkk;->smallCardView:Landroid/view/View;

    .line 59
    iput-object p1, p0, Lc8/wkk;->fullCardView:Landroid/view/View;

    .line 60
    iput p2, p0, Lc8/wkk;->item_position:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lc8/Hkk;)V
    .locals 0
    .param p1, "smallCardView"    # Landroid/view/View;
    .param p2, "fullCardView"    # Landroid/view/View;
    .param p3, "info"    # Lc8/Hkk;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lc8/wkk;->smallCardView:Landroid/view/View;

    .line 42
    iput-object p2, p0, Lc8/wkk;->fullCardView:Landroid/view/View;

    .line 43
    iput-object p3, p0, Lc8/wkk;->sideslipContent:Lc8/Hkk;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lc8/MVo;)V
    .locals 0
    .param p1, "fullCardView"    # Landroid/view/View;
    .param p2, "sideSlipInfo"    # Lc8/MVo;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lc8/wkk;->fullCardView:Landroid/view/View;

    .line 48
    iput-object p2, p0, Lc8/wkk;->sideSlipInfo:Lc8/MVo;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/youku/phone/detail/data/PlayRelatedPart;I)V
    .locals 1
    .param p1, "smallCardView"    # Landroid/view/View;
    .param p2, "playRelatedPart"    # Lcom/youku/phone/detail/data/PlayRelatedPart;
    .param p3, "item_position"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lc8/wkk;->smallCardView:Landroid/view/View;

    .line 67
    iput-object p1, p0, Lc8/wkk;->fullCardView:Landroid/view/View;

    .line 68
    iput-object p2, p0, Lc8/wkk;->playRelatedPart:Lcom/youku/phone/detail/data/PlayRelatedPart;

    .line 69
    iput p3, p0, Lc8/wkk;->item_position:I

    .line 70
    iget-object v0, p2, Lcom/youku/phone/detail/data/PlayRelatedPart;->videoId:Ljava/lang/String;

    iput-object v0, p0, Lc8/wkk;->object_id:Ljava/lang/String;

    .line 71
    iget-object v0, p2, Lcom/youku/phone/detail/data/PlayRelatedPart;->type:Ljava/lang/String;

    iput-object v0, p0, Lc8/wkk;->object_type:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/youku/phone/detail/data/SeriesVideo;)V
    .locals 0
    .param p1, "fullCardView"    # Landroid/view/View;
    .param p2, "seriesVideo"    # Lcom/youku/phone/detail/data/SeriesVideo;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lc8/wkk;->fullCardView:Landroid/view/View;

    .line 53
    iput-object p2, p0, Lc8/wkk;->seriesVideo:Lcom/youku/phone/detail/data/SeriesVideo;

    .line 54
    return-void
.end method

.method public constructor <init>(Lc8/Ckk;Landroid/view/View;Lcom/youku/phone/detail/data/PlayRelatedVideo;II)V
    .locals 1
    .param p1, "playRelatedVideoCardInfo"    # Lc8/Ckk;
    .param p2, "smallCardView"    # Landroid/view/View;
    .param p3, "playRelatedVideo"    # Lcom/youku/phone/detail/data/PlayRelatedVideo;
    .param p4, "group_position"    # I
    .param p5, "item_position"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget-object v0, p1, Lc8/Ckk;->testId:Ljava/lang/String;

    iput-object v0, p0, Lc8/wkk;->testId:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lc8/Ckk;->drawerName:Ljava/lang/String;

    iput-object v0, p0, Lc8/wkk;->drawerName:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lc8/Ckk;->id:Ljava/lang/String;

    iput-object v0, p0, Lc8/wkk;->id:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lc8/Ckk;->type:Ljava/lang/String;

    iput-object v0, p0, Lc8/wkk;->type:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lc8/wkk;->smallCardView:Landroid/view/View;

    .line 82
    iput-object p3, p0, Lc8/wkk;->playRelatedVideo:Lcom/youku/phone/detail/data/PlayRelatedVideo;

    .line 83
    iget-object v0, p3, Lcom/youku/phone/detail/data/PlayRelatedVideo;->videoId:Ljava/lang/String;

    iput-object v0, p0, Lc8/wkk;->object_id:Ljava/lang/String;

    .line 84
    iget-object v0, p3, Lcom/youku/phone/detail/data/PlayRelatedVideo;->type:Ljava/lang/String;

    iput-object v0, p0, Lc8/wkk;->object_type:Ljava/lang/String;

    .line 85
    iput p4, p0, Lc8/wkk;->group_position:I

    .line 86
    iput p5, p0, Lc8/wkk;->item_position:I

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lcom/youku/phone/detail/data/PlayRelatedVideo;II)V
    .locals 1
    .param p1, "testId"    # Ljava/lang/String;
    .param p2, "drawerName"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "smallCardView"    # Landroid/view/View;
    .param p5, "playRelatedVideo"    # Lcom/youku/phone/detail/data/PlayRelatedVideo;
    .param p6, "group_position"    # I
    .param p7, "item_position"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lc8/wkk;->testId:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lc8/wkk;->drawerName:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lc8/wkk;->id:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lc8/wkk;->smallCardView:Landroid/view/View;

    .line 95
    iput-object p5, p0, Lc8/wkk;->playRelatedVideo:Lcom/youku/phone/detail/data/PlayRelatedVideo;

    .line 96
    iget-object v0, p5, Lcom/youku/phone/detail/data/PlayRelatedVideo;->videoId:Ljava/lang/String;

    iput-object v0, p0, Lc8/wkk;->object_id:Ljava/lang/String;

    .line 97
    iget-object v0, p5, Lcom/youku/phone/detail/data/PlayRelatedVideo;->type:Ljava/lang/String;

    iput-object v0, p0, Lc8/wkk;->object_type:Ljava/lang/String;

    .line 98
    iput p6, p0, Lc8/wkk;->group_position:I

    .line 99
    iput p7, p0, Lc8/wkk;->item_position:I

    .line 100
    return-void
.end method
