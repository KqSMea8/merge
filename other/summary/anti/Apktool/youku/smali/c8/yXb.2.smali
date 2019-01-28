.class public Lc8/yXb;
.super Ljava/lang/Object;
.source "PopRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wXb;,
        Lc8/xXb;,
        Lcom/alibaba/poplayer/layermanager/PopRequest$Status;
    }
.end annotation


# instance fields
.field public attachActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private extra:Ljava/lang/Object;

.field private final mDomian:I

.field private mHostView:Landroid/view/View;

.field private mLayer:Landroid/view/View;

.field private final mLayerType:Ljava/lang/String;

.field public mMasterViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPopParam:Lc8/wXb;

.field private mStatus:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

.field private mStatusCallBacks:Lc8/xXb;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/app/Activity;Lc8/xXb;)V
    .locals 1
    .param p1, "domian"    # I
    .param p2, "layerType"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "callBack"    # Lc8/xXb;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lc8/yXb;->mDomian:I

    .line 125
    iput-object p2, p0, Lc8/yXb;->mLayerType:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->WAITTING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    iput-object v0, p0, Lc8/yXb;->mStatus:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    .line 127
    iput-object p4, p0, Lc8/yXb;->mStatusCallBacks:Lc8/xXb;

    .line 128
    invoke-virtual {p0, p3}, Lc8/yXb;->setAttachActivity(Landroid/app/Activity;)V

    .line 129
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/Activity;Lc8/xXb;IZZZ)V
    .locals 1
    .param p1, "domian"    # I
    .param p2, "layerType"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "callBack"    # Lc8/xXb;
    .param p5, "priority"    # I
    .param p6, "enqueue"    # Z
    .param p7, "forcePopRespectingPriority"    # Z
    .param p8, "exclusive"    # Z

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Lc8/yXb;->mDomian:I

    .line 134
    iput-object p2, p0, Lc8/yXb;->mLayerType:Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->WAITTING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    iput-object v0, p0, Lc8/yXb;->mStatus:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    .line 136
    iput-object p4, p0, Lc8/yXb;->mStatusCallBacks:Lc8/xXb;

    .line 137
    invoke-virtual {p0, p3}, Lc8/yXb;->setAttachActivity(Landroid/app/Activity;)V

    .line 138
    new-instance v0, Lc8/wXb;

    invoke-direct {v0, p5, p6, p7, p8}, Lc8/wXb;-><init>(IZZZ)V

    invoke-virtual {p0, v0}, Lc8/yXb;->setPopParam(Lc8/wXb;)V

    .line 139
    return-void
.end method


# virtual methods
.method public getAttachActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lc8/yXb;->attachActivity:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getDomian()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lc8/yXb;->mDomian:I

    return v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc8/yXb;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public getHostView()Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lc8/yXb;->mHostView:Landroid/view/View;

    return-object v0
.end method

.method public getLayer()Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lc8/yXb;->mLayer:Landroid/view/View;

    return-object v0
.end method

.method public getLayerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lc8/yXb;->mLayerType:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lc8/yXb;->mMasterViewRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getPopParam()Lc8/wXb;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lc8/yXb;->mPopParam:Lc8/wXb;

    return-object v0
.end method

.method public getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/yXb;->mStatus:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    return-object v0
.end method

.method public getStatusCallBacks()Lc8/xXb;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lc8/yXb;->mStatusCallBacks:Lc8/xXb;

    return-object v0
.end method

.method public setAttachActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "attachActivity"    # Landroid/app/Activity;

    .prologue
    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/yXb;->attachActivity:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method

.method public setExtra(Ljava/lang/Object;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/Object;

    .prologue
    .line 120
    iput-object p1, p0, Lc8/yXb;->extra:Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public setHostView(Landroid/view/View;)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 112
    iput-object p1, p0, Lc8/yXb;->mHostView:Landroid/view/View;

    .line 113
    return-void
.end method

.method public setLayer(Landroid/view/View;)V
    .locals 0
    .param p1, "layer"    # Landroid/view/View;

    .prologue
    .line 108
    iput-object p1, p0, Lc8/yXb;->mLayer:Landroid/view/View;

    .line 109
    return-void
.end method

.method public setMasterView(Landroid/view/View;)V
    .locals 1
    .param p1, "masterView"    # Landroid/view/View;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/yXb;->mMasterViewRef:Ljava/lang/ref/WeakReference;

    .line 65
    return-void
.end method

.method setPopParam(Lc8/wXb;)V
    .locals 0
    .param p1, "popParam"    # Lc8/wXb;

    .prologue
    .line 92
    iput-object p1, p0, Lc8/yXb;->mPopParam:Lc8/wXb;

    .line 93
    return-void
.end method

.method public setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    .prologue
    .line 104
    iput-object p1, p0, Lc8/yXb;->mStatus:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    .line 105
    return-void
.end method
