.class public Lcom/youku/vo/Initial$HomeInit$SubTag;
.super Ljava/lang/Object;
.source "Initial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Initial$HomeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubTag"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x51ed3385726125d4L


# instance fields
.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public selected_icon:Ljava/lang/String;

.field public tab_title_color:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public url_open_way:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
