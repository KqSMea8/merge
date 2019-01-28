.class public Lc8/edo;
.super Ljava/lang/Object;
.source "JSBProtocolHandler.java"

# interfaces
.implements Lc8/Eco;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fdo;->handlerMessage(Lc8/Aco;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fdo;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/fdo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fdo;

    .prologue
    .line 294
    iput-object p1, p0, Lc8/edo;->this$0:Lc8/fdo;

    iput-object p2, p0, Lc8/edo;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errno"    # I
    .param p2, "errmsg"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v0, Lc8/Bco;

    invoke-direct {v0}, Lc8/Bco;-><init>()V

    .line 298
    .local v0, "response":Lc8/Bco;
    iget-object v1, p0, Lc8/edo;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Bco;->setResponseId(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p3}, Lc8/Bco;->setResponseData(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, p1}, Lc8/Bco;->setErrorNo(I)V

    .line 301
    invoke-virtual {v0, p2}, Lc8/Bco;->setErrorMsg(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lc8/edo;->this$0:Lc8/fdo;

    invoke-virtual {v1, v0}, Lc8/fdo;->dispatchResponse(Lc8/Bco;)V

    .line 303
    return-void
.end method
