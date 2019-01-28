.class public abstract Lc8/cWb;
.super Ljava/lang/Object;
.source "AbsCommandController.java"


# instance fields
.field private currentSequence:Ljava/lang/String;

.field private final mCommand:I

.field private final mCommandSet:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0
    .param p1, "commandSet"    # I
    .param p2, "command"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lc8/cWb;->mCommandSet:I

    .line 20
    iput p2, p0, Lc8/cWb;->mCommand:I

    .line 21
    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lc8/cWb;->mCommand:I

    return v0
.end method

.method public getCommandSet()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lc8/cWb;->mCommandSet:I

    return v0
.end method

.method public getCurrentSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/cWb;->currentSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructionHandler()Lc8/aWb;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartJointPointCallback()Lc8/oWb;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStopJointPointCallback()Lc8/oWb;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCurrentSequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentSequence"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/cWb;->currentSequence:Ljava/lang/String;

    .line 59
    return-void
.end method
