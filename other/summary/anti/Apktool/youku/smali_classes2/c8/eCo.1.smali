.class public Lc8/eCo;
.super Ljava/lang/Object;
.source "VipBoxBase.java"


# instance fields
.field private box_id:Ljava/lang/String;

.field private box_name:Ljava/lang/String;

.field private box_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBox_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lc8/eCo;->box_id:Ljava/lang/String;

    return-object v0
.end method

.method public getBox_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lc8/eCo;->box_name:Ljava/lang/String;

    return-object v0
.end method

.method public getBox_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lc8/eCo;->box_type:Ljava/lang/String;

    return-object v0
.end method

.method public setBox_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "box_id"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lc8/eCo;->box_id:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setBox_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "box_name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/eCo;->box_name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setBox_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "box_type"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lc8/eCo;->box_type:Ljava/lang/String;

    .line 25
    return-void
.end method
