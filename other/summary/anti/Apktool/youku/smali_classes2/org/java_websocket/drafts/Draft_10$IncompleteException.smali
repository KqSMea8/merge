.class public Lorg/java_websocket/drafts/Draft_10$IncompleteException;
.super Ljava/lang/Throwable;
.source "Draft_10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hcq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncompleteException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65bb3ca323055105L


# instance fields
.field private preferedsize:I

.field final synthetic this$0:Lc8/Hcq;


# direct methods
.method public constructor <init>(Lc8/Hcq;I)V
    .locals 0
    .param p2, "preferedsize"    # I

    .prologue
    .line 41
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft_10$IncompleteException;->this$0:Lc8/Hcq;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 42
    iput p2, p0, Lorg/java_websocket/drafts/Draft_10$IncompleteException;->preferedsize:I

    .line 43
    return-void
.end method


# virtual methods
.method public getPreferedSize()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/java_websocket/drafts/Draft_10$IncompleteException;->preferedsize:I

    return v0
.end method
