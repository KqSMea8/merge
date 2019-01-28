.class public Lcom/youku/vo/Initial$PopPage;
.super Ljava/lang/Object;
.source "Initial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopPage"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6ac476892bb5eac4L


# instance fields
.field public activity_id:Ljava/lang/String;

.field public game_image:Ljava/lang/String;

.field public game_information:Lcom/youku/vo/Initial$GameInformation;

.field public pop_up_type:Ljava/lang/String;

.field public state:I

.field final synthetic this$0:Lcom/youku/vo/Initial;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Initial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/vo/Initial;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/youku/vo/Initial$PopPage;->this$0:Lcom/youku/vo/Initial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
