.class public Lc8/zIf;
.super Ljava/lang/Object;
.source "MsgRouter.java"

# interfaces
.implements Lc8/CIf;


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
    .line 124
    iput-object p1, p0, Lc8/zIf;->this$0:Lc8/DIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSend(Lc8/Vlq;)Lc8/Vlq;
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
    .line 127
    .local p1, "in":Lc8/Vlq;, "Lrx/Observable<Lcom/taobao/tao/messagekit/core/model/Package;>;"
    return-object p1
.end method
