.class public final Lc8/Zpq;
.super Ljava/lang/Object;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResultSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ypq;,
        Lc8/Wpq;
    }
.end annotation


# instance fields
.field final group:Lc8/SBq;

.field final guard:Ljava/lang/Object;

.field leftDone:Z

.field leftId:I

.field final leftMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT",
            "Left;",
            ">;"
        }
    .end annotation
.end field

.field rightDone:Z

.field rightId:I

.field final rightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field final subscriber:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/aqq;


# direct methods
.method public constructor <init>(Lc8/aqq;Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lc8/Zpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    .local p2, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    iput-object p1, p0, Lc8/Zpq;->this$0:Lc8/aqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/Zpq;->guard:Ljava/lang/Object;

    .line 82
    iput-object p2, p0, Lc8/Zpq;->subscriber:Lc8/Omq;

    .line 83
    new-instance v0, Lc8/SBq;

    invoke-direct {v0}, Lc8/SBq;-><init>()V

    iput-object v0, p0, Lc8/Zpq;->group:Lc8/SBq;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Zpq;->leftMap:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Zpq;->rightMap:Ljava/util/Map;

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    .local p0, "this":Lc8/Zpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    iget-object v2, p0, Lc8/Zpq;->subscriber:Lc8/Omq;

    iget-object v3, p0, Lc8/Zpq;->group:Lc8/SBq;

    invoke-virtual {v2, v3}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 91
    new-instance v0, Lc8/Wpq;

    invoke-direct {v0, p0}, Lc8/Wpq;-><init>(Lc8/Zpq;)V

    .line 92
    .local v0, "s1":Lc8/Omq;, "Lrx/Subscriber<TTLeft;>;"
    new-instance v1, Lc8/Ypq;

    invoke-direct {v1, p0}, Lc8/Ypq;-><init>(Lc8/Zpq;)V

    .line 94
    .local v1, "s2":Lc8/Omq;, "Lrx/Subscriber<TTRight;>;"
    iget-object v2, p0, Lc8/Zpq;->group:Lc8/SBq;

    invoke-virtual {v2, v0}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 95
    iget-object v2, p0, Lc8/Zpq;->group:Lc8/SBq;

    invoke-virtual {v2, v1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 97
    iget-object v2, p0, Lc8/Zpq;->this$0:Lc8/aqq;

    iget-object v2, v2, Lc8/aqq;->left:Lc8/Vlq;

    invoke-virtual {v2, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 98
    iget-object v2, p0, Lc8/Zpq;->this$0:Lc8/aqq;

    iget-object v2, v2, Lc8/aqq;->right:Lc8/Vlq;

    invoke-virtual {v2, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 99
    return-void
.end method
