.class public Lorg/osgi/framework/BundleEvent;
.super Ljava/util/EventObject;
.source "BundleEvent.java"


# static fields
.field public static final BEFORE_INSTALL:I = 0x2766

.field public static final BEFORE_STARTED:I = 0x2767

.field public static final INSTALLED:I = 0x1

.field public static final STARTED:I = 0x2

.field public static final STOPPED:I = 0x4

.field public static final UNINSTALLED:I = 0x10

.field public static final UPDATED:I = 0x8


# instance fields
.field private transient bundle:Lc8/Seq;

.field private transient type:I


# direct methods
.method public constructor <init>(ILc8/Seq;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "bundle"    # Lc8/Seq;

    .prologue
    .line 83
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 84
    iput-object p2, p0, Lorg/osgi/framework/BundleEvent;->bundle:Lc8/Seq;

    .line 85
    iput p1, p0, Lorg/osgi/framework/BundleEvent;->type:I

    .line 86
    return-void
.end method


# virtual methods
.method public getBundle()Lc8/Seq;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/osgi/framework/BundleEvent;->bundle:Lc8/Seq;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/osgi/framework/BundleEvent;->type:I

    return v0
.end method
