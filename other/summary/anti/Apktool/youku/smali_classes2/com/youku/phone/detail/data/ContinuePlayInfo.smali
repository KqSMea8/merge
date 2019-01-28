.class public Lcom/youku/phone/detail/data/ContinuePlayInfo;
.super Ljava/lang/Object;
.source "ContinuePlayInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/data/ContinuePlayInfo$ContinuePlayVideo;
    }
.end annotation


# instance fields
.field public arg1:Ljava/lang/String;

.field public componentId:Ljava/lang/String;

.field public corner_text:Ljava/lang/String;

.field public icon_big:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public parentCompId:Ljava/lang/String;

.field public scm:Ljava/lang/String;

.field public selected_icon:Ljava/lang/String;

.field public selected_icon_big:Ljava/lang/String;

.field public spm:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public trackInfo:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public url_open_way:Ljava/lang/String;

.field public videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/data/ContinuePlayInfo$ContinuePlayVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/data/ContinuePlayInfo;->videos:Ljava/util/ArrayList;

    .line 31
    return-void
.end method
