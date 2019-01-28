.class public Lc8/HWb;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/IWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field command:I

.field commandSet:I

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IILjava/lang/Object;)V
    .locals 0
    .param p1, "commandSet"    # I
    .param p2, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lc8/HWb;->commandSet:I

    .line 22
    iput p2, p0, Lc8/HWb;->command:I

    .line 23
    iput-object p3, p0, Lc8/HWb;->value:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public static build(IILjava/lang/Object;)Lc8/HWb;
    .locals 1
    .param p0, "commandSet"    # I
    .param p1, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;)",
            "Lc8/HWb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/HWb;

    invoke-direct {v0, p0, p1, p2}, Lc8/HWb;-><init>(IILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    iget v0, p0, Lc8/HWb;->command:I

    return v0
.end method

.method public getCommandSet()I
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    iget v0, p0, Lc8/HWb;->commandSet:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    iget-object v0, p0, Lc8/HWb;->value:Ljava/lang/Object;

    return-object v0
.end method
