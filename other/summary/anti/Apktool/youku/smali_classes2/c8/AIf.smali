.class public Lc8/AIf;
.super Ljava/lang/Object;
.source "MsgRouter.java"

# interfaces
.implements Lc8/BIf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/DIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DIf;


# direct methods
.method constructor <init>(Lc8/DIf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/DIf;

    .prologue
    .line 131
    iput-object p1, p0, Lc8/AIf;->this$0:Lc8/DIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lc8/Vlq;)Lc8/Vlq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<",
            "Lc8/RJf;",
            ">;)",
            "Lc8/Vlq",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "result":Lc8/Vlq;, "Lrx/Observable<Lcom/taobao/tao/messagekit/core/model/Package;>;"
    return-object p1
.end method
