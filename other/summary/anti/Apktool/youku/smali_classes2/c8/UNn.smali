.class public Lc8/UNn;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WNn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayListItem"
.end annotation


# instance fields
.field public duration:I

.field public offset:I

.field final synthetic this$0:Lc8/WNn;

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lc8/WNn;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lc8/UNn;->this$0:Lc8/WNn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
