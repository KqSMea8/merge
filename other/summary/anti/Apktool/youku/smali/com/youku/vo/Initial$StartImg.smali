.class public Lcom/youku/vo/Initial$StartImg;
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
    name = "StartImg"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29491a6e89ca5e0eL


# instance fields
.field public end:J

.field public start:J

.field final synthetic this$0:Lcom/youku/vo/Initial;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Initial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/vo/Initial;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/youku/vo/Initial$StartImg;->this$0:Lcom/youku/vo/Initial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
