.class public Lc8/GXf;
.super Ljava/lang/Object;
.source "WXImageStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/FXf;
    }
.end annotation


# instance fields
.field public blurRadius:I

.field imageListener:Lc8/FXf;

.field public isClipping:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isSharpen:Z

.field public placeHolder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public getImageListener()Lc8/FXf;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lc8/GXf;->imageListener:Lc8/FXf;

    return-object v0
.end method

.method public setImageListener(Lc8/FXf;)V
    .locals 0
    .param p1, "imageListener"    # Lc8/FXf;

    .prologue
    .line 56
    iput-object p1, p0, Lc8/GXf;->imageListener:Lc8/FXf;

    .line 57
    return-void
.end method
