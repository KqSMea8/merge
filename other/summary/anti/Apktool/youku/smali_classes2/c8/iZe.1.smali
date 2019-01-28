.class public final Lc8/iZe;
.super Ljava/lang/Object;
.source "DBHandler.java"

# interfaces
.implements Lc8/JZe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/kZe;->create(Lc8/jZe;Ljava/lang/String;ILjava/lang/String;)Lc8/kZe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lc8/jZe;

.field final synthetic val$dbHandler:Lc8/kZe;


# direct methods
.method constructor <init>(Lc8/jZe;Lc8/kZe;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lc8/iZe;->val$callback:Lc8/jZe;

    iput-object p2, p0, Lc8/iZe;->val$dbHandler:Lc8/kZe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lc8/BZe;II)V
    .locals 2
    .param p1, "cipherDB"    # Lc8/BZe;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lc8/iZe;->val$callback:Lc8/jZe;

    iget-object v1, p0, Lc8/iZe;->val$dbHandler:Lc8/kZe;

    invoke-interface {v0, v1, p2, p3}, Lc8/jZe;->onUpgrade(Lc8/kZe;II)V

    .line 52
    return-void
.end method
