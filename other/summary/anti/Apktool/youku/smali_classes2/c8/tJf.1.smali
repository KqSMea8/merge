.class public Lc8/tJf;
.super Ljava/lang/Object;
.source "MtopConnection.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wJf;->onResponse(Ljava/lang/String;ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Ljava/lang/String;",
        "Lc8/FIf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/wJf;

.field final synthetic val$dataId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/wJf;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/wJf;

    .prologue
    .line 87
    iput-object p1, p0, Lc8/tJf;->this$0:Lc8/wJf;

    iput-object p2, p0, Lc8/tJf;->val$dataId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Lc8/FIf;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/DIf;->getResponseManager()Lc8/GIf;

    move-result-object v0

    iget-object v1, p0, Lc8/tJf;->val$dataId:Ljava/lang/String;

    iget-object v2, p0, Lc8/tJf;->val$dataId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/GIf;->pop(Ljava/lang/String;Ljava/lang/String;)Lc8/FIf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/tJf;->call(Ljava/lang/String;)Lc8/FIf;

    move-result-object v0

    return-object v0
.end method
