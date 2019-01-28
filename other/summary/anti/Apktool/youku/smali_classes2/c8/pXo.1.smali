.class public Lc8/pXo;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Lc8/jXo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qXo;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qXo;


# direct methods
.method constructor <init>(Lc8/qXo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qXo;

    .prologue
    .line 451
    iput-object p1, p0, Lc8/pXo;->this$0:Lc8/qXo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDetectingReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1
    .param p1, "i"    # Ljava/io/InputStream;

    .prologue
    .line 453
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
