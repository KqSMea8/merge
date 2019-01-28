.class public Lcom/youku/service/push/PushMsg$SchemeActionItem;
.super Ljava/lang/Object;
.source "PushMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/push/PushMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchemeActionItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5bc474cfe93eae2cL


# instance fields
.field public action:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/youku/service/push/PushMsg$SchemeActionItem;
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 356
    new-instance v0, Lcom/youku/service/push/PushMsg$SchemeActionItem;

    invoke-direct {v0}, Lcom/youku/service/push/PushMsg$SchemeActionItem;-><init>()V

    .line 357
    .local v0, "item":Lcom/youku/service/push/PushMsg$SchemeActionItem;
    iput-object p0, v0, Lcom/youku/service/push/PushMsg$SchemeActionItem;->action:Ljava/lang/String;

    .line 358
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 348
    instance-of v0, p1, Lcom/youku/service/push/PushMsg$SchemeActionItem;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/youku/service/push/PushMsg$SchemeActionItem;->action:Ljava/lang/String;

    check-cast p1, Lcom/youku/service/push/PushMsg$SchemeActionItem;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/youku/service/push/PushMsg$SchemeActionItem;->action:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 351
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
