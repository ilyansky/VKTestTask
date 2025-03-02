import UIKit

final class ReviewsView: UIView {

    let tableView = UITableView()

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        tableView.frame = bounds.inset(by: safeAreaInsets)
    }

}

// MARK: - Private

private extension ReviewsView {

    func setupView() {
        backgroundColor = .systemBackground
        setupTableView()
    }

    func setupTableView() {
        addSubview(tableView)
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            tableView.topAnchor.constraint(equalTo: topAnchor),
//            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
//            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            tableView.trailingAnchor.constraint(equalTo: trailingAnchor)
//        ])

        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.register(ReviewCell.self, forCellReuseIdentifier: ReviewCellConfig.reuseId)
        tableView.register(ReviewsCountCell.self, forCellReuseIdentifier: ReviewsCountCellConfig.reuseId)
    }

}
