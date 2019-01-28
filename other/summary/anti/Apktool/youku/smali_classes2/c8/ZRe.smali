.class public Lc8/ZRe;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lc8/qTe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fSe;


# direct methods
.method constructor <init>(Lc8/fSe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fSe;

    .prologue
    .line 137
    iput-object p1, p0, Lc8/ZRe;->this$0:Lc8/fSe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lc8/VSe;)Lc8/cTe;
    .locals 1
    .param p1, "request"    # Lc8/VSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lc8/ZRe;->this$0:Lc8/fSe;

    invoke-virtual {v0, p1}, Lc8/fSe;->get(Lc8/VSe;)Lc8/cTe;

    move-result-object v0

    return-object v0
.end method

.method public put(Lc8/cTe;)Lc8/wUe;
    .locals 1
    .param p1, "response"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lc8/ZRe;->this$0:Lc8/fSe;

    invoke-static {v0, p1}, Lc8/fSe;->access$000(Lc8/fSe;Lc8/cTe;)Lc8/wUe;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lc8/VSe;)V
    .locals 1
    .param p1, "request"    # Lc8/VSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lc8/ZRe;->this$0:Lc8/fSe;

    invoke-static {v0, p1}, Lc8/fSe;->access$100(Lc8/fSe;Lc8/VSe;)V

    .line 146
    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lc8/ZRe;->this$0:Lc8/fSe;

    invoke-static {v0}, Lc8/fSe;->access$300(Lc8/fSe;)V

    .line 152
    return-void
.end method

.method public trackResponse(Lc8/zUe;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lc8/zUe;

    .prologue
    .line 154
    iget-object v0, p0, Lc8/ZRe;->this$0:Lc8/fSe;

    invoke-static {v0, p1}, Lc8/fSe;->access$400(Lc8/fSe;Lc8/zUe;)V

    .line 155
    return-void
.end method

.method public update(Lc8/cTe;Lc8/cTe;)V
    .locals 1
    .param p1, "cached"    # Lc8/cTe;
    .param p2, "network"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lc8/ZRe;->this$0:Lc8/fSe;

    invoke-static {v0, p1, p2}, Lc8/fSe;->access$200(Lc8/fSe;Lc8/cTe;Lc8/cTe;)V

    .line 149
    return-void
.end method
