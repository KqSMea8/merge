.class public Lc8/Lvb;
.super Ljava/lang/Object;
.source "ElevatorItem.java"


# instance fields
.field private id:I

.field private isHighLight:Z

.field private isImgShow:Z

.field private name:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/Lvb;->name:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lc8/Lvb;->id:I

    return v0
.end method

.method public getIsHighLight()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lc8/Lvb;->isHighLight:Z

    return v0
.end method

.method public getIsImgShow()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lc8/Lvb;->isImgShow:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lc8/Lvb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lc8/Lvb;->width:I

    return v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 48
    iput p1, p0, Lc8/Lvb;->id:I

    .line 49
    return-void
.end method

.method public setIsHighLight(Z)V
    .locals 0
    .param p1, "isHighLight"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lc8/Lvb;->isHighLight:Z

    .line 41
    return-void
.end method

.method public setIsImgShow(Z)V
    .locals 0
    .param p1, "isImgShow"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lc8/Lvb;->isImgShow:Z

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/Lvb;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 20
    iput p1, p0, Lc8/Lvb;->width:I

    .line 21
    return-void
.end method
