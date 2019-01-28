.class public Lcom/youku/vo/Initial$Update;
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
    name = "Update"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field public desc:Ljava/lang/String;

.field public download:Ljava/lang/String;

.field public market:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/Initial;

.field public type:I

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/Initial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/vo/Initial;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/youku/vo/Initial$Update;->this$0:Lcom/youku/vo/Initial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
