.class public Landroid/support/v7/widget/RecyclerView$SavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "RecyclerView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v7/widget/RecyclerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLayoutState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11557
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 11535
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 11536
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-class v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 11537
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 11536
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 11538
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 11544
    invoke-direct {p0, p1}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 11545
    return-void
.end method


# virtual methods
.method copyFrom(Landroid/support/v7/widget/RecyclerView$SavedState;)V
    .locals 1
    .param p1, "other"    # Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 11554
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 11555
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 11549
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 11550
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 11551
    return-void
.end method
