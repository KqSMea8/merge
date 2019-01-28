.class public Lcom/taobao/tao/remotebusiness/handler/HandlerParam;
.super Ljava/lang/Object;
.source "HandlerParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7fa034eea54cd5fbL


# instance fields
.field public event:Lc8/NNp;

.field public listener:Lc8/QNp;

.field public mtopBusiness:Lc8/GMf;

.field public mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field public pojo:Lc8/cOp;


# direct methods
.method public constructor <init>(Lc8/QNp;Lc8/NNp;Lc8/GMf;)V
    .locals 0
    .param p1, "listener"    # Lc8/QNp;
    .param p2, "event"    # Lc8/NNp;
    .param p3, "mtopBusiness"    # Lc8/GMf;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lc8/QNp;

    .line 43
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->event:Lc8/NNp;

    .line 44
    iput-object p3, p0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lc8/GMf;

    .line 45
    return-void
.end method
