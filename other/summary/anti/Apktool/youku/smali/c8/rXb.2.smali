.class public Lc8/rXb;
.super Ljava/lang/Object;
.source "LayerInfoOrderList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;->sort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lc8/qXb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lc8/rXb;->this$0:Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lc8/qXb;Lc8/qXb;)I
    .locals 2
    .param p1, "lhs"    # Lc8/qXb;
    .param p2, "rhs"    # Lc8/qXb;

    .prologue
    .line 28
    invoke-virtual {p1}, Lc8/qXb;->getLevel()I

    move-result v0

    invoke-virtual {p2}, Lc8/qXb;->getLevel()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Lc8/qXb;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lc8/qXb;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/rXb;->compare(Lc8/qXb;Lc8/qXb;)I

    move-result v0

    return v0
.end method
